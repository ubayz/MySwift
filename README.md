# EmbededView

🧩 Konsep: Embedded View (Parent & Child) – Anti-Konflik saat Development
🎯 Tujuan:
	- Mencegah konflik saat beberapa developer mengerjakan tampilan bersamaan.
	- Menjamin setiap view (terutama child) independen dan reusable.
🧠 Konsep Kerja:

	- Parent View : 

		Menjadi kontainer utama.

		Hanya bertanggung jawab pada layouting & navigasi antar child.

		Memuat child 

	- Child View 

		Bersifat mandiri: content + logic per komponen.

		Tidak boleh mengakses parent langsung.

		Dapat diuji atau dikembangkan terpisah.
✅ Best Practice Anti-Konflik
Aspek						: Strategi
Komunikasi antar tampilan	: Tiap developer pegang 1 child view (mandiri)
Version control				: Struktur file memisahkan perubahan (minim tabrakan Git merge)
Perubahan UI				: ParentView hanya menyediakan slot/placeholder (tidak hardcode child)
Testing						: Unit test tiap child bisa dilakukan di luar ParentView secara isolated		
