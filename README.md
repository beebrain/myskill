# 🧠 Antigravity Custom Skills Library

คลังสะสม **Custom Skills (ทักษะเฉพาะทางของ AI Agent)** สำหรับใช้งานบนโปรเจกต์คู่ค้าการเขียนตำราและการออกแบบหลักสูตรวิชาการ ด้วยสถาปัตยกรรม **Antigravity IDE** สกิลเหล่านี้ช่วยปรับแต่งระดับความเชี่ยวชาญของ AI ให้เหมาะสมกับงานวิชาการขั้นสูง วิศวกรรมศาสตร์ และคณิตศาสตร์คอมพิวเตอร์

---

## 🛠️ รายชื่อสกิลทั้งหมดในคลัง (Available Skills)

คลังข้อมูลนี้บรรจุชุดคำสั่งและแนวทางปฏิบัติเชิงลึก (Deep Guidelines & Automation Tools) จำนวน 6 สกิลหลัก:

| สกิล (Skill Name) | คำอธิบาย (Description) | โฟลเดอร์ต้นทาง |
| :--- | :--- | :--- |
| **🎓 obe-curriculum-design** | สกิลวิเคราะห์และออกแบบหลักสูตรตามกรอบ **Outcome-Based Education (OBE)** และเกณฑ์การประกันคุณภาพการศึกษา **AUN-QA v4.0** (PEOs $\rightarrow$ PLOs $\rightarrow$ CLOs) | [obe-curriculum-design](file:///.gemini/skills/obe-curriculum-design/SKILL.md) |
| **📐 commath-write-example** | แนวทางการเขียนโจทย์คณิตศาสตร์ (ตัวอย่างและวิธีทำ) ด้วย LaTeX ตามรูปแบบโครงสร้าง `ex`, `solution`, `solsteps` และคำสั่ง `\mathoval` | [commath-write-example](file:///.gemini/skills/commath-write-example/SKILL.md) |
| **📝 thai-textbook-prose** | ชุดทักษะการเรียบเรียงภาษาไทย (Prose Style) สำหรับใช้เขียนเนื้อหาและตำราเรียนวิชาการให้มีความสละสลวย ถูกหลักภาษา และอ่านเข้าใจง่าย | [thai-textbook-prose](file:///.gemini/skills/thai-textbook-prose/SKILL.md) |
| **⚙️ academic-engineering-book-writer** | สกิลเฉพาะสำหรับบทบาทผู้เขียนตำราวิศวกรรมศาสตร์เชิงวิชาการ ครอบคลุมการจัดโครงสร้างเนื้อหาและการอ้างอิงระดับสูง | [academic-engineering-book-writer](file:///.gemini/skills/academic-engineering-book-writer/SKILL.md) |
| **🔍 humanize-academic-writing** | เครื่องมือวิเคราะห์ ความเป็นธรรมชาติ ปรับแต่งภาษาเพื่อลดระดับความแข็งกระด้างของ AI (มีสคริปต์ตรวจจับและวิเคราะห์บทความภาษาไทย) | [humanize-academic-writing](file:///.gemini/skills/humanize-academic-writing/SKILL.md) |
| **💻 karpathy-guidelines** | ชุดแนวคิดและระเบียบปฏิบัติในการเขียนโปรแกรมระดับโปรตามแบบฉบับของ Andrej Karpathy (คิดก่อนเขียน, การแก้ไขแบบ Surgical) | [karpathy-guidelines](file:///.gemini/skills/karpathy-guidelines/SKILL.md) |

---

## 🚀 วิธีการนำไปใช้งาน (How to Use)

เนื่องจากสกิลเหล่านี้ถูกจัดวางในรูปแบบ **Project-Local Skills** ภายในโฟลเดอร์ `.gemini/skills/` ของ Workspace:

1. **การดาวน์โหลด:** สามารถดาวน์โหลดคลังสกิลนี้ลงในเครื่องของคุณได้ 2 วิธีหลัก:
   * **กรณีมี Git:** คลอน (Clone) คลังโปรเจกต์นี้:
     ```bash
     git clone https://github.com/beebrain/myskill.git
     ```
   * **กรณีไม่มี Git (ดาวน์โหลดผ่านเบราว์เซอร์):** 
     1. ไปที่หน้าเว็บ [https://github.com/beebrain/myskill](https://github.com/beebrain/myskill)
     2. คลิกปุ่มสีเขียว **"Code"** -> เลือก **"Download ZIP"**
     3. แตกไฟล์ ZIP และนำโฟลเดอร์ `.gemini` ไปวางที่โฟลเดอร์หลัก (Root) ของโปรเจกต์คุณ
2. **การตรวจพบโดยอัตโนมัติ:** เมื่อคุณเปิดโฟลเดอร์โปรเจกต์นี้ด้วย **Antigravity IDE** ตัวระบบ AI Agent จะสแกนและโหลดคุณสมบัติจากไฟล์ `SKILL.md` ของทุกโฟลเดอร์ย่อยใน `.gemini/skills/` ขึ้นมาให้ใช้งานทันทีโดยไม่ต้องทำการตั้งค่าใด ๆ เพิ่มเติม
3. **การสั่งการใช้งาน:** คุณสามารถเรียกใช้หรือสั่งการให้เอเจนต์สวมบทบาทตามสกิลได้โดยตรง เช่น:
   > *"ช่วยตรวจสอบคำอธิบายรายวิชา (CLOs) นี้ให้สอดคล้องตามเกณฑ์ AUN-QA v4.0 ของสกิล obe-curriculum-design"*
   > *"ช่วยเขียนตัวอย่างโจทย์เรื่องเซตตามโครงสร้างของสกิล commath-write-example"*

---

## 📁 โครงสร้างโปรเจกต์ (Project Structure)

```text
.
├── .gitignore
├── README.md                <-- ไฟล์นี้ (คู่มือการใช้งานคลังสกิล)
└── .gemini
    └── skills
        ├── academic-engineering-book-writer
        │   └── SKILL.md
        ├── commath-write-example
        │   └── SKILL.md
        ├── humanize-academic-writing
        │   ├── SKILL.md
        │   ├── scripts/     <-- ชุดสคริปต์ตรวจวิเคราะห์และจัดการ LaTeX
        │   └── docs/        <-- เอกสารแนะนำการเขียนภาษาไทย-อังกฤษ
        ├── karpathy-guidelines
        │   └── SKILL.md
        ├── obe-curriculum-design
        │   └── SKILL.md
        └── thai-textbook-prose
            └── SKILL.md
```

---

## 🤝 การส่งต่อและการแชร์ต่อ (Contributing)

สำหรับคณาจารย์และผู้พัฒนาหลักสูตรที่ต้องการเพิ่มพูนสกิลใหม่ ๆ:
1. สร้างโฟลเดอร์ใหม่ใต้ `.gemini/skills/`
2. สร้างไฟล์ `SKILL.md` และกำหนด YAML Frontmatter ด้านบนสุดของไฟล์ให้ถูกต้อง เช่น:
   ```yaml
   ---
   name: ชื่อสกิลของคุณ
   description: คำอธิบายบทบาทสั้นๆ สำหรับให้ระบบ AI ตรวจหา
   ---
   ```
3. ทำการเพิ่มคู่มือแนวทางปฏิบัติตามมาตรฐาน Markdown ลงในไฟล์แล้วส่ง Pull Request กลับเข้ามาที่ GitHub ได้ทันที!
