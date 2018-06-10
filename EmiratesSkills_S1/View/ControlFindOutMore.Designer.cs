namespace EmiratesSkills_S1.View
{
    partial class ControlFindOutMore
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
            this.btnESNC = new System.Windows.Forms.Button();
            this.btnSkillsDetails = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F);
            this.label1.Location = new System.Drawing.Point(388, 40);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(412, 39);
            this.label1.TabIndex = 0;
            this.label1.Text = "Find Out More Information";
            // 
            // btnESNC
            // 
            this.btnESNC.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.btnESNC.Location = new System.Drawing.Point(342, 140);
            this.btnESNC.Name = "btnESNC";
            this.btnESNC.Size = new System.Drawing.Size(515, 127);
            this.btnESNC.TabIndex = 1;
            this.btnESNC.Text = "EmiratesSkills National Competition (ESNC)";
            this.btnESNC.UseVisualStyleBackColor = true;
            this.btnESNC.Click += new System.EventHandler(this.btnESNC_Click);
            // 
            // btnSkillsDetails
            // 
            this.btnSkillsDetails.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.btnSkillsDetails.Location = new System.Drawing.Point(342, 315);
            this.btnSkillsDetails.Name = "btnSkillsDetails";
            this.btnSkillsDetails.Size = new System.Drawing.Size(515, 127);
            this.btnSkillsDetails.TabIndex = 2;
            this.btnSkillsDetails.Text = "Skill\'s Details (Technical Descriptions, Test Project, Infrastructure Lists)";
            this.btnSkillsDetails.UseVisualStyleBackColor = true;
            this.btnSkillsDetails.Click += new System.EventHandler(this.btnSkillsDetails_Click);
            // 
            // ControlFindOutMore
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnSkillsDetails);
            this.Controls.Add(this.btnESNC);
            this.Controls.Add(this.label1);
            this.Name = "ControlFindOutMore";
            this.Size = new System.Drawing.Size(1196, 554);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnESNC;
        private System.Windows.Forms.Button btnSkillsDetails;
    }
}
