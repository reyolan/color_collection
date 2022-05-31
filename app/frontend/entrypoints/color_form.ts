function removeFirstCharacter(text: string): string {
  return text.slice(1);
}

function convertHexToDecimal(hex: string): string {
  return String(parseInt(hex, 16));
}

function convertHexToRgb(hex: string): string {
  const red = convertHexToDecimal(`${hex[1]}${hex[2]}`);
  const green = convertHexToDecimal(`${hex[3]}${hex[4]}`);
  const blue = convertHexToDecimal(`${hex[5]}${hex[6]}`);

  return `${red}, ${green}, ${blue}`;
}

function convertHexToHsl(hex: string): string {
  const rgbValues = convertHexToRgb(hex).replace(/[()]/g, "");
  const arrayRgb = rgbValues.split(",").map(Number);

  const r = arrayRgb[0] / 255;
  const g = arrayRgb[1] / 255;
  const b = arrayRgb[2] / 255;

  let cmin = Math.min(r, g, b),
    cmax = Math.max(r, g, b),
    delta = cmax - cmin,
    h = 0,
    s = 0,
    l = 0;

  if (delta == 0) h = 0;
  else if (cmax == r) h = ((g - b) / delta) % 6;
  else if (cmax == g) h = (b - r) / delta + 2;
  else h = (r - g) / delta + 4;

  h = Math.round(h * 60);

  if (h < 0) h += 360;

  l = (cmax + cmin) / 2;
  s = delta == 0 ? 0 : delta / (1 - Math.abs(2 * l - 1));
  s = +(s * 100).toFixed(1);
  l = +(l * 100).toFixed(1);

  return `${h}, ${s}%, ${l}%`;
}

function updateRgbValue(): void {
  const colorPickerElement = document.querySelector(
    "[data-color]"
  )! as HTMLInputElement;
  const rgbField = document.querySelector("#color_rgb")! as HTMLInputElement;
  const hexField = document.querySelector("#color_hex")! as HTMLInputElement;
  const hslField = document.querySelector("#color_hsl")! as HTMLInputElement;

  initializeColorInputAndColorFields(
    colorPickerElement,
    rgbField,
    hexField,
    hslField
  );

  colorPickerElement.addEventListener("input", e => {
    const colorInputElement = e.target as HTMLInputElement;
    rgbField.value = convertHexToRgb(colorInputElement.value);
    hexField.value = removeFirstCharacter(
      colorInputElement.value.toUpperCase()
    );
    hslField.value = convertHexToHsl(colorInputElement.value);
  });
}

function initializeColorInputAndColorFields(
  pickerElement: HTMLInputElement,
  rgbField: HTMLInputElement,
  hexField: HTMLInputElement,
  hslField: HTMLInputElement
): void {
  if (rgbField.value) {
    pickerElement.value = `#${hexField.value}`;
  } else {
    hexField.value = removeFirstCharacter(pickerElement.value);
    hslField.value = convertHexToHsl(hexField.value);
    rgbField.value = convertHexToRgb(hexField.value);
  }
}

updateRgbValue();
