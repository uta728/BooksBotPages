# docs/pagesフォルダを削除
rm -r docs/pages

# ページの自動生成
cd app
python GeneratePages.py
cd ..

# 生成されたページをdocsフォルダへ移動
mv -f app/output/index.htm docs
mkdir docs/pages
cp -r app/output/ docs/pages/
