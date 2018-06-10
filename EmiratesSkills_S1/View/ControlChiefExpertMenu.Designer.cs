namespace EmiratesSkills_S1.View
{
    partial class ControlChiefExpertMenu
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
            this.btnCompetitorsStatus = new System.Windows.Forms.Button();
            this.btnCompetitorsMarking = new System.Windows.Forms.Button();
            this.btnResults = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F);
            this.label1.Location = new System.Drawing.Point(439, 52);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(298, 39);
            this.label1.TabIndex = 0;
            this.label1.Text = "Chief Expert Menu";
            // 
            // btnCompetitorsStatus
            // 
            this.btnCompetitorsStatus.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F);
            this.btnCompetitorsStatus.Location = new System.Drawing.Point(381, 159);
            this.btnCompetitorsStatus.Name = "btnCompetitorsStatus";
            this.btnCompetitorsStatus.Size = new System.Drawing.Size(427, 85);
            this.btnCompetitorsStatus.TabIndex = 1;
            this.btnCompetitorsStatus.Text = "Competitors Status";
            this.btnCompetitorsStatus.UseVisualStyleBackColor = true;
            // 
            // btnCompetitorsMarking
            // 
            this.btnCompetitorsMarking.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F);
            this.btnCompetitorsMarking.Location = new System.Drawing.Point(381, 276);
            this.btnCompetitorsMarking.Name = "btnCompetitorsMarking";
            this.btnCompetitorsMarking.Size = new System.Drawing.Size(427, 85);
            this.btnCompetitorsMarking.TabIndex = 1;
            this.btnCompetitorsMarking.Text = "Competitors Marking";
            this.btnCompetitorsMarking.UseVisualStyleBackColor = true;
            // 
            // btnResults
            // 
            this.btnResults.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F);
            this.btnResults.Location = new System.Drawing.Point(381, 390);
            this.btnResults.Name = "btnResults";
            this.btnResults.Size = new System.Drawing.Size(427, 85);
            this.btnResults.TabIndex = 1;
            this.btnResults.Text = "Results";
            this.btnResults.UseVisualStyleBackColor = true;
            // 
            // ControlChiefExpertMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnResults);
            this.Controls.Add(this.btnCompetitorsMarking);
            this.Controls.Add(this.btnCompetitorsStatus);
            this.Controls.Add(this.label1);
            this.Name = "ControlChiefExpertMenu";
            this.Size = new System.Drawing.Size(1196, 554);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnCompetitorsStatus;
        private System.Windows.Forms.Button btnCompetitorsMarking;
        private System.Windows.Forms.Button btnResults;
    }
}
