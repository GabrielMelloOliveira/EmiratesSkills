namespace EmiratesSkills_S1.View
{
    partial class ControlCompetitorsStatus
    {
        /// <summary> 
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Designer de Componentes

        /// <summary> 
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.cbCompetition = new System.Windows.Forms.ComboBox();
            this.cbSkill = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.btnView = new System.Windows.Forms.Button();
            this.btnExportToExcel = new System.Windows.Forms.Button();
            this.gridCompetitors = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.gridCompetitors)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F);
            this.label1.Location = new System.Drawing.Point(431, 57);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(305, 39);
            this.label1.TabIndex = 0;
            this.label1.Text = "Competitors Status";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.label2.Location = new System.Drawing.Point(300, 144);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(122, 25);
            this.label2.TabIndex = 1;
            this.label2.Text = "Competition:";
            // 
            // cbCompetition
            // 
            this.cbCompetition.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.cbCompetition.FormattingEnabled = true;
            this.cbCompetition.Location = new System.Drawing.Point(428, 141);
            this.cbCompetition.Name = "cbCompetition";
            this.cbCompetition.Size = new System.Drawing.Size(360, 33);
            this.cbCompetition.TabIndex = 2;
            // 
            // cbSkill
            // 
            this.cbSkill.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.cbSkill.FormattingEnabled = true;
            this.cbSkill.Location = new System.Drawing.Point(428, 191);
            this.cbSkill.Name = "cbSkill";
            this.cbSkill.Size = new System.Drawing.Size(360, 33);
            this.cbSkill.TabIndex = 4;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.label3.Location = new System.Drawing.Point(368, 194);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(54, 25);
            this.label3.TabIndex = 3;
            this.label3.Text = "Skill:";
            // 
            // btnView
            // 
            this.btnView.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.btnView.Location = new System.Drawing.Point(795, 191);
            this.btnView.Name = "btnView";
            this.btnView.Size = new System.Drawing.Size(127, 33);
            this.btnView.TabIndex = 5;
            this.btnView.Text = "View";
            this.btnView.UseVisualStyleBackColor = true;
            // 
            // btnExportToExcel
            // 
            this.btnExportToExcel.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.btnExportToExcel.Location = new System.Drawing.Point(928, 191);
            this.btnExportToExcel.Name = "btnExportToExcel";
            this.btnExportToExcel.Size = new System.Drawing.Size(194, 33);
            this.btnExportToExcel.TabIndex = 6;
            this.btnExportToExcel.Text = "Export to Excel";
            this.btnExportToExcel.UseVisualStyleBackColor = true;
            // 
            // gridCompetitors
            // 
            this.gridCompetitors.BackgroundColor = System.Drawing.Color.White;
            this.gridCompetitors.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.gridCompetitors.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridCompetitors.Location = new System.Drawing.Point(76, 280);
            this.gridCompetitors.Name = "gridCompetitors";
            this.gridCompetitors.RowTemplate.Height = 24;
            this.gridCompetitors.Size = new System.Drawing.Size(1046, 271);
            this.gridCompetitors.TabIndex = 7;
            // 
            // ControlCompetitorsStatus
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.gridCompetitors);
            this.Controls.Add(this.btnExportToExcel);
            this.Controls.Add(this.btnView);
            this.Controls.Add(this.cbSkill);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cbCompetition);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "ControlCompetitorsStatus";
            this.Size = new System.Drawing.Size(1196, 554);
            ((System.ComponentModel.ISupportInitialize)(this.gridCompetitors)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cbCompetition;
        private System.Windows.Forms.ComboBox cbSkill;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnView;
        private System.Windows.Forms.Button btnExportToExcel;
        private System.Windows.Forms.DataGridView gridCompetitors;
    }
}
