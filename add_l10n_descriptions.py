import os
import json
from collections import OrderedDict

L10N_DIR = 'lib/l10n'
EN_FILE = os.path.join(L10N_DIR, 'intl_en.arb')

# Yalnızca .arb dosyalarını bul
arb_files = [f for f in os.listdir(L10N_DIR) if f.endswith('.arb') and f != 'intl_en.arb']

# İngilizce dosyayı yükle
with open(EN_FILE, encoding='utf-8') as f:
    en_data = json.load(f, object_pairs_hook=OrderedDict)

# İngilizce dosyadaki açıklama bloklarını topla
en_descriptions = OrderedDict()
for k, v in en_data.items():
    if k.startswith('@'):
        en_descriptions[k] = v

for arb_file in arb_files:
    path = os.path.join(L10N_DIR, arb_file)
    with open(path, encoding='utf-8') as f:
        data = json.load(f, object_pairs_hook=OrderedDict)

    # Yeni dict oluştur (sıralı kalması için)
    new_data = OrderedDict()
    for k, v in data.items():
        new_data[k] = v
        # Eğer bu anahtar için açıklama varsa ve eklenmemişse ekle
        desc_key = f'@{k}'
        if desc_key in en_descriptions and desc_key not in data:
            new_data[desc_key] = en_descriptions[desc_key]

    # Dosyayı güncelle
    with open(path, 'w', encoding='utf-8') as f:
        json.dump(new_data, f, ensure_ascii=False, indent=2)
    print(f'Updated: {arb_file}')

print('Tüm .arb dosyalarına açıklama blokları eklendi!') 