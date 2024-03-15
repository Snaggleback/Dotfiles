<div align="center">
    <picture>
        <source
            media="(prefers-color-scheme: dark)"
            srcset="./images/headers/main-header-dark.png"
        />
        <source
            media="(prefers-color-scheme: light)"
            srcset="./images/headers/main-header-light.png"
        />
        <img
            alt="Exibe o cabeçalho do meu projeto DOTFILES, junto com sua pequena descrição"
            src="./images/headers/main-header-light.png"
        />
    </picture>
</div>

# Introdução

Este repositório contém minhas configurações pessoais para o gerenciador de janelas i3wm no Arch Linux. Aqui estão detalhes sobre os softwares, imagens e papéis de parede que utilizo. Sou um usuário simples ;)

![Minha área de trabalho minimalista](./images/screenshots/captura-de-tela-06-03-24-14-36-20.png)
![Minha área de trabalho minimalista](./images/screenshots/captura-de-tela-06-03-24-14-34-55.png)
![Minha área de trabalho minimalista](./images/screenshots/captura-de-tela-06-03-24-14-36-04.png)

## Tema da Nova Aba

Para personalizar minha nova aba, utilizo a extensão NightTab com a seguinte personalização/configuração:

<details>
<summary>Tema</summary>

```json
{
    "nightTab": true,
    "version": "7.3.0",
    "state": {
        "layout": {
            "area": {
                "header": { "width": 62, "justify": "center" },
                "bookmark": { "width": 78, "justify": "center" }
            },
            "alignment": "center-center",
            "order": "header-bookmark",
            "direction": "vertical",
            "size": 78,
            "width": 76,
            "padding": 50,
            "gutter": 27,
            "breakpoint": "xl",
            "scrollbar": "none",
            "title": "Nova guia",
            "favicon": "https://images.emojiterra.com/google/noto-emoji/unicode-15.1/color/svg/1f44b.svg",
            "overscroll": false
        },
        "header": {
            "item": { "justify": "center" },
            "greeting": {
                "show": true,
                "type": "custom",
                "custom": "Olá",
                "name": "Ítalo",
                "size": 423,
                "newLine": false
            },
            "transitional": {
                "show": false,
                "type": "time-and-date",
                "size": 124,
                "newLine": false
            },
            "clock": {
                "hour": { "show": false, "display": "number" },
                "minute": { "show": false, "display": "number" },
                "second": { "show": false, "display": "number" },
                "separator": { "show": true, "text": "" },
                "meridiem": { "show": false },
                "hour24": { "show": true },
                "size": 354,
                "newLine": true
            },
            "date": {
                "day": {
                    "show": false,
                    "display": "word",
                    "weekStart": "monday",
                    "length": "long"
                },
                "date": {
                    "show": false,
                    "display": "number",
                    "ordinal": false
                },
                "month": {
                    "show": false,
                    "display": "word",
                    "length": "short",
                    "ordinal": true
                },
                "year": { "show": false, "display": "number" },
                "separator": { "show": true, "text": "" },
                "format": "date-month",
                "size": 160,
                "newLine": true
            },
            "search": {
                "show": true,
                "width": { "by": "custom", "size": 69 },
                "engine": {
                    "selected": "google",
                    "custom": { "name": "", "url": "", "queryName": "" }
                },
                "text": { "justify": "center" },
                "size": 133,
                "newLine": true,
                "newTab": false,
                "string": ""
            },
            "order": ["greeting", "search"],
            "edit": false
        },
        "bookmark": {
            "size": 92,
            "url": { "show": false },
            "line": { "show": false },
            "shadow": { "show": true },
            "hoverScale": { "show": true },
            "orientation": "bottom",
            "style": "block",
            "newTab": false,
            "edit": false,
            "add": false,
            "show": true,
            "item": {}
        },
        "group": {
            "area": { "justify": "center" },
            "order": "header-body",
            "name": { "size": 100 },
            "toolbar": { "size": 100 },
            "edit": false,
            "add": false
        },
        "toolbar": {
            "location": "corner",
            "position": "bottom-right",
            "size": 100,
            "accent": { "show": false },
            "add": { "show": true },
            "edit": { "show": true },
            "newLine": false
        },
        "theme": {
            "color": {
                "range": { "primary": { "h": 0, "s": 0 } },
                "contrast": { "start": 0, "end": 100 },
                "shades": 14
            },
            "accent": {
                "hsl": { "h": 0, "s": 0, "l": 100 },
                "rgb": { "r": 255, "g": 255, "b": 255 },
                "random": { "active": false, "style": "any" },
                "cycle": { "active": false, "speed": 300, "step": 10 }
            },
            "font": {
                "display": {
                    "name": "Open Sans",
                    "weight": 400,
                    "style": "normal"
                },
                "ui": { "name": "Open Sans", "weight": 400, "style": "normal" }
            },
            "background": {
                "type": "color",
                "color": {
                    "hsl": { "h": 0, "s": 0, "l": 6 },
                    "rgb": { "r": 15, "g": 15, "b": 15 }
                },
                "gradient": {
                    "angle": 160,
                    "start": {
                        "hsl": { "h": 206, "s": 16, "l": 40 },
                        "rgb": { "r": 86, "g": 104, "b": 118 }
                    },
                    "end": {
                        "hsl": { "h": 219, "s": 28, "l": 12 },
                        "rgb": { "r": 22, "g": 28, "b": 39 }
                    }
                },
                "image": {
                    "url": "",
                    "blur": 0,
                    "grayscale": 0,
                    "scale": 100,
                    "accent": 0,
                    "opacity": 100,
                    "vignette": { "opacity": 0, "start": 90, "end": 70 }
                },
                "video": {
                    "url": "",
                    "blur": 0,
                    "grayscale": 0,
                    "scale": 100,
                    "accent": 0,
                    "opacity": 100,
                    "vignette": { "opacity": 0, "start": 90, "end": 70 }
                }
            },
            "opacity": { "general": 100 },
            "layout": {
                "color": {
                    "by": "theme",
                    "hsl": { "h": 0, "s": 0, "l": 0 },
                    "rgb": { "r": 0, "g": 0, "b": 0 },
                    "blur": 0,
                    "opacity": 10
                },
                "divider": { "size": 0 }
            },
            "header": {
                "color": {
                    "by": "theme",
                    "hsl": { "h": 0, "s": 0, "l": 0 },
                    "rgb": { "r": 0, "g": 0, "b": 0 },
                    "opacity": 10
                },
                "search": { "opacity": 100 }
            },
            "bookmark": {
                "color": {
                    "by": "theme",
                    "opacity": 10,
                    "hsl": { "h": 0, "s": 0, "l": 0 },
                    "rgb": { "r": 0, "g": 0, "b": 0 }
                },
                "item": { "border": 0, "opacity": 100 }
            },
            "group": { "toolbar": { "opacity": 100 } },
            "toolbar": { "opacity": 100 },
            "style": "dark",
            "radius": 260,
            "shadow": 0,
            "shade": { "opacity": 4, "blur": 4 },
            "custom": { "all": [], "edit": false }
        },
        "search": false,
        "modal": false,
        "menu": true
    },
    "bookmark": [
        {
            "name": { "text": "Coisas legais", "show": true },
            "collapse": true,
            "toolbar": {
                "openAll": { "show": false },
                "collapse": { "show": true }
            },
            "items": [
                {
                    "url": "https://www.amazon.com.br/",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": { "show": true, "text": "Amazon", "size": 7 },
                        "visual": {
                            "show": true,
                            "type": "letter",
                            "size": 25,
                            "letter": { "text": "AZ" },
                            "icon": {
                                "name": "amazon",
                                "prefix": "fab",
                                "label": "Amazon"
                            },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1626297999213
                },
                {
                    "url": "https://drive.google.com/drive/",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": { "show": true, "text": "Drive", "size": 7 },
                        "visual": {
                            "show": true,
                            "type": "letter",
                            "size": 25,
                            "letter": { "text": "DR" },
                            "icon": {
                                "name": "google-drive",
                                "prefix": "fab",
                                "label": "Drive"
                            },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1626298028996
                },
                {
                    "url": "https://mail.google.com/",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": { "show": true, "text": "Gmail", "size": 7 },
                        "visual": {
                            "show": true,
                            "type": "letter",
                            "size": 25,
                            "letter": { "text": "GM" },
                            "icon": {
                                "name": "envelope",
                                "prefix": "fas",
                                "label": "Envelope"
                            },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1626298011293
                },
                {
                    "url": "https://www.reddit.com/",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": { "show": true, "text": "Reddit", "size": 7 },
                        "visual": {
                            "show": true,
                            "type": "icon",
                            "size": 25,
                            "letter": { "text": "R" },
                            "icon": {
                                "name": "reddit-alien",
                                "prefix": "fab",
                                "label": "reddit Alien"
                            },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1626298017175
                },
                {
                    "url": "https://www.youtube.com/",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": { "show": true, "text": "YouTube", "size": 7 },
                        "visual": {
                            "show": true,
                            "type": "icon",
                            "size": 25,
                            "letter": { "text": "" },
                            "icon": {
                                "name": "youtube",
                                "prefix": "fab",
                                "label": "YouTube"
                            },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1706705484481
                },
                {
                    "url": "https://music.youtube.com/",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": {
                            "show": true,
                            "text": "YouTube Music",
                            "size": 7
                        },
                        "visual": {
                            "show": true,
                            "type": "icon",
                            "size": 25,
                            "letter": { "text": "" },
                            "icon": {
                                "name": "compact-disc",
                                "prefix": "fas",
                                "label": "Compact Disc"
                            },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1710275564537
                },
                {
                    "url": "https://web.whatsapp.com/",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": { "show": true, "text": "WhatsApp", "size": 7 },
                        "visual": {
                            "show": true,
                            "type": "icon",
                            "size": 25,
                            "letter": { "text": "" },
                            "icon": {
                                "name": "whatsapp",
                                "prefix": "fab",
                                "label": "What's App"
                            },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1706705535294
                }
            ]
        },
        {
            "name": { "text": "Dev sites", "show": true },
            "collapse": true,
            "toolbar": {
                "openAll": { "show": false },
                "collapse": { "show": true }
            },
            "items": [
                {
                    "url": "https://github.com/snaggleback",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": { "show": true, "text": "Github", "size": 7 },
                        "visual": {
                            "show": true,
                            "type": "icon",
                            "size": 25,
                            "letter": { "text": "GIT" },
                            "icon": {
                                "name": "github",
                                "prefix": "fab",
                                "label": "GitHub"
                            },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1626298038470
                },
                {
                    "url": "https://chat.openai.com/",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": { "show": true, "text": "ChatGPT", "size": 7 },
                        "visual": {
                            "show": true,
                            "type": "letter",
                            "size": 25,
                            "letter": { "text": "GPT" },
                            "icon": { "name": "", "prefix": "", "label": "" },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1706705588988
                },
                {
                    "url": "https://gemini.google.com/app",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": { "show": true, "text": "Gemini", "size": 7 },
                        "visual": {
                            "show": true,
                            "type": "letter",
                            "size": 40,
                            "letter": { "text": "✦" },
                            "icon": {
                                "name": "star",
                                "prefix": "fas",
                                "label": ""
                            },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1708748563809
                },
                {
                    "url": "https://codesandbox.io/dashboard/recent",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": {
                            "show": true,
                            "text": "CodeSandbox",
                            "size": 7
                        },
                        "visual": {
                            "show": true,
                            "type": "icon",
                            "size": 25,
                            "letter": { "text": "" },
                            "icon": {
                                "name": "cube",
                                "prefix": "fas",
                                "label": "Cube"
                            },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1710409810799
                }
            ]
        },
        {
            "name": { "text": "Estudo", "show": true },
            "collapse": true,
            "toolbar": {
                "size": 100,
                "openAll": { "show": false },
                "collapse": { "show": true }
            },
            "items": [
                {
                    "url": "https://docs.google.com/document/u/0/?hl=pt-BR",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": {
                            "show": true,
                            "text": "Documentos (Google)",
                            "size": 7
                        },
                        "visual": {
                            "show": true,
                            "type": "icon",
                            "size": 25,
                            "letter": { "text": "" },
                            "icon": {
                                "name": "file-alt",
                                "prefix": "fas",
                                "label": "Alternate File"
                            },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1706810616893
                },
                {
                    "url": "https://docs.google.com/spreadsheets/u/0/",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": {
                            "show": true,
                            "text": "Planilhas (Google)",
                            "size": 7
                        },
                        "visual": {
                            "show": true,
                            "type": "icon",
                            "size": 25,
                            "letter": { "text": "" },
                            "icon": {
                                "name": "file-invoice",
                                "prefix": "fas",
                                "label": "File Invoice"
                            },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1708878436621
                },
                {
                    "url": "https://www.canva.com/",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": { "show": true, "text": "Canva", "size": 7 },
                        "visual": {
                            "show": true,
                            "type": "letter",
                            "size": 25,
                            "letter": { "text": "C" },
                            "icon": { "name": "", "prefix": "", "label": "" },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1708276766516
                },
                {
                    "url": "https://www.notion.so/",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": { "show": true, "text": "Notion", "size": 7 },
                        "visual": {
                            "show": true,
                            "type": "letter",
                            "size": 25,
                            "letter": { "text": "N" },
                            "icon": { "name": "", "prefix": "", "label": "" },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1708794212807
                },
                {
                    "url": "https://www.connectareducacional.com.br/metodo/index.php",
                    "display": {
                        "alignment": "center-center",
                        "direction": "vertical",
                        "order": "visual-name",
                        "rotate": 0,
                        "translate": { "x": 0, "y": 0 },
                        "gutter": 25,
                        "name": {
                            "show": true,
                            "text": "Connectar Educacional: Formação Profissional",
                            "size": 7
                        },
                        "visual": {
                            "show": true,
                            "type": "letter",
                            "size": 25,
                            "letter": { "text": "CE" },
                            "icon": { "name": "", "prefix": "", "label": "" },
                            "image": { "url": "" },
                            "shadow": { "size": 0 }
                        }
                    },
                    "accent": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 }
                    },
                    "color": {
                        "by": "theme",
                        "hsl": { "h": 0, "s": 0, "l": 0 },
                        "rgb": { "r": 0, "g": 0, "b": 0 },
                        "opacity": 100
                    },
                    "background": {
                        "show": false,
                        "type": "image",
                        "opacity": 100,
                        "image": { "url": "" },
                        "video": { "url": "" }
                    },
                    "border": 0,
                    "shape": { "wide": false, "tall": false },
                    "timestamp": 1710032922244
                }
            ]
        }
    ]
}
```

</details>

## Sofware utilizados

Irei colocar os programas abaixo que eu instalo para deixar o meu sistema assim. Eu tenho algumas fontes extras que não utilizo, mas caso eu quero mudar de fonte, já tem a opção, aqui as fontes que utilizo no meu sistema:

```text
pacman -S ttf-anonymouspro-nerd ttf-dejavu-nerd ttf-droid ttf-firacode-nerd ttf-go-nerd 
ttf-hack-nerd ttf-jetbrains-mono-nerd ttf-liberation-mono-nerd ttf-nerd-fonts-symbols 
ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono ttf-noto-nerd ttf-roboto-mono-nerd 
ttf-sourcecodepro-nerd ttf-space-mono-nerd ttf-terminus-nerd ttf-ubuntu-mono-nerd ttf-ubuntu-nerd 
ttf-victor-mono-nerd otf-droid-nerd otf-firamono-nerd otf-monaspace-nerd noto-fonts noto-fonts-cjk 
noto-fonts-emoji noto-fonts-extra
```

Fora essas fontes, eu tenho mais uns pingados de sofwares que dá de se resumir em uma lista, se eu esquecer de alguma coisa é só avisar!

<details>

<summary>Listagem de programas utilizados</summary>
  
  -   **Edição de Imagens:**
      -   `GIMP`: Um poderoso editor de imagens de código aberto com uma ampla gama de recursos
      -   `Inkscape`: Uma ferramenta de design vetorial de código aberto para criar e editar gráficos vetoriais
  -   **Edição de Código e Arquivos:**
      -   `Nano`: Um editor de texto simples e fácil de usar na linha de comando
      -   `Vim`: Um editor de texto altamente configurável construído para eficiência
      -   `Visual Studio Code`: Um editor de código-fonte desenvolvido pela Microsoft com suporte a várias linguagens e recursos de desenvolvimento
  -   **Visualização de Imagens:**
      -   `Feh`: Um visualizador de imagem leve para exibir imagens em sistemas X11
      -   `W3M`: Um navegador de texto para a linha de comando
  -   **Papel de Parede:**
      -   `Nitrogen`: Um gerenciador de papéis de parede para definir e manter o plano de fundo da área de trabalho
  -   **Lançador de Aplicativos:**
      -   `Rofi`: Um seletor de aplicativos e lançador de janelas altamente personalizável
  -   **Captura de Tela:**
      -   `Main`: Uma ferramenta de captura de tela rápida e eficiente
      -   `Xclip`: Um utilitário para interagir com a área de transferência do X
      -   `Xdotool`: Uma ferramenta para automatizar interações com janelas X
  -   **Controle de Brilho:**
      -   `Brightnessctl`: Uma ferramenta para controlar o brilho da tela em sistemas que suportam o controle de brilho
  -   **Controle de Áudio:**
      -   `Pactl`: Uma interface de linha de comando para controlar o PulseAudio, o sistema de som padrão do Linux. Ele já veio padrão, não precisei instalar
      -   `Playerctl`: Um utilitário para controlar players de música via linha de comando
  -   **Modo Noturno:**
      -   `Redshift`: Um aplicativo que ajusta a temperatura da cor da tela de acordo com a hora do dia para reduzir a fadiga ocular
  -   **Conectividade Bluetooth:**
      -   `Bluetoothctl`, `Blueman`, `Bluez` e `Bluez-utils`: Conjunto de ferramentas para configurar e gerenciar dispositivos Bluetooth no Linux
  -   **Informações da Bateria:**
      -   `Acpi`: Um utilitário para exibir informações sobre dispositivos ACPI, incluindo bateria
  -   **Gerenciador de Arquivos:**
      -   `Ranger`: Um gerenciador de arquivos baseado em texto para a linha de comando, com navegação estilo Vim
  -   **Personalização do Ambiente:**
      -   `Lxappearance`: Uma ferramenta para personalizar o tema GTK e o ícone do cursor do mouse
      -   `Lightdm-gtk-greeter-settings`: Um utilitário de configuração para o LightDM, um gerenciador de exibição
  -   **Bordas Arredondadas, Blur, etc.:**
      -   `Picom`: Um compositor leve que fornece transparência, sombras e outras efeitos visuais para gerenciadores de janelas
  -   **Terminal:**
      -   `Kitty`: Um emulador de terminal altamente configurável e performático
  -   **Notificações:**
      -   `Dunst`: Um leve e personalizável daemon de notificações para sistemas X11
  -   **AUR:**
      -   `Yay`: Um gerenciador de pacotes AUR (Arch User Repository) para facilitar a instalação de software não oficial no Arch Linux
  -   **Navegador Web:**
      -   `Google Chrome` ou `Chromium`: Navegadores da Web desenvolvidos pelo Google, conhecidos por sua rapidez e suporte a tecnologias web modernas. Utilizo mais sites online, então me serve muito um navegador

</details>

## Papéis de parede

Os Papéis de parede incluídos neste repositório são usados para personalizar a aparência do sistema, e gostaria de destacar que alguns dos Papéis de parede utilizados não possui informações claras sobre a licença e o autor. Eu fiz uma busca, mas não consegui encontrar informações

Caso você seja o autor desse papel de parede ou tenha informações sobre a licença, por favor, entre em contato para que eu possa atribuir corretamente os créditos

## Tema e ícones

-   **Tema: [Orchis](https://github.com/vinceliuice/Orchis-theme) (Variação de cor: Gray)**
    -   O Orhis é um tema popular que apresenta uma aparência moderna e limpa em sistemas operacionais Linux. A variação de cor Gray do tema oferece uma paleta de cores suaves e elegantes, que combinam bem com a maioria das interfaces gráficas de usuário
-   **Ícones: [Papyrus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)**
    -   Os ícones Papyrus são conhecidos por sua aparência nítida e detalhada, o que os torna ideais para uso em telas de alta resolução. Eles também têm uma grande variedade de ícones disponíveis, cobrindo muitas categorias diferentes de aplicativos e pastas
-   **Cursor: [Simp1e](https://gitlab.com/cursors/simp1e)**
    -   Como descrito pelo criador "An aesthetic cursor theme for Linux desktops" ou para quem não fala árabe "Um elegante tema de cursor para ambientes de desktop Linux"

## Contribuição

Sinta-se à vontade para explorar, utilizar e adaptar meus dotfiles de acordo com suas necessidades. Se você encontrar algum problema ou tiver sugestões de melhoria, fique à vontade para abrir uma issue ou enviar uma solicitação de pull

## Licença

Este projeto é licenciado sob a [Licença MIT](./LICENSE). Veja o arquivo `LICENSE` para obter mais detalhes

> **Nota:** Tenha cuidado ao utilizar essas configurações em seu sistema. É recomendado que você faça backup de seus arquivos de configuração existentes antes de substituí-los pelos fornecidos neste repositório
