namespace EmiratesSkills_S1.View
{
    partial class FormAdd
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lbHeader = new System.Windows.Forms.Label();
            this.lbDefaultType = new System.Windows.Forms.Label();
            this.lbText = new System.Windows.Forms.Label();
            this.lbType = new System.Windows.Forms.Label();
            this.cbType = new System.Windows.Forms.ComboBox();
            this.btnAdd = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lbHeader
            // 
            this.lbHeader.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F);
            this.lbHeader.Location = new System.Drawing.Point(12, 9);
            this.lbHeader.Name = "lbHeader";
            this.lbHeader.Size = new System.Drawing.Size(595, 54);
            this.lbHeader.TabIndex = 0;
            this.lbHeader.Text = "Default Header";
            this.lbHeader.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lbDefaultType
            // 
            this.lbDefaultType.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.lbDefaultType.Location = new System.Drawing.Point(59, 117);
            this.lbDefaultType.Name = "lbDefaultType";
            this.lbDefaultType.Size = new System.Drawing.Size(526, 28);
            this.lbDefaultType.TabIndex = 1;
            this.lbDefaultType.Text = "Default: Type";
            this.lbDefaultType.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lbText
            // 
            this.lbText.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Italic);
            this.lbText.ForeColor = System.Drawing.SystemColors.GrayText;
            this.lbText.Location = new System.Drawing.Point(60, 145);
            this.lbText.Name = "lbText";
            this.lbText.Size = new System.Drawing.Size(525, 24);
            this.lbText.TabIndex = 2;
            this.lbText.Text = "List of all the DEFAULT that are not available in TYPE.";
            this.lbText.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lbType
            // 
            this.lbType.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.lbType.Location = new System.Drawing.Point(60, 202);
            this.lbType.Name = "lbType";
            this.lbType.Size = new System.Drawing.Size(94, 28);
            this.lbType.TabIndex = 3;
            this.lbType.Text = "Type:";
            this.lbType.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // cbType
            // 
            this.cbType.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.cbType.FormattingEnabled = true;
            this.cbType.Location = new System.Drawing.Point(160, 201);
            this.cbType.Name = "cbType";
            this.cbType.Size = new System.Drawing.Size(287, 33);
            this.cbType.TabIndex = 4;
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(236, 273);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(143, 28);
            this.btnAdd.TabIndex = 5;
            this.btnAdd.Text = "Add";
            this.btnAdd.UseVisualStyleBackColor = true;
            // 
            // FormAdd
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(610, 332);
            this.Controls.Add(this.btnAdd);
            this.Controls.Add(this.cbType);
            this.Controls.Add(this.lbType);
            this.Controls.Add(this.lbText);
            this.Controls.Add(this.lbDefaultType);
            this.Controls.Add(this.lbHeader);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FormAdd";
            this.ShowIcon = false;
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label lbHeader;
        private System.Windows.Forms.Label lbDefaultType;
        private System.Windows.Forms.Label lbText;
        private System.Windows.Forms.Label lbType;
        private System.Windows.Forms.ComboBox cbType;
        private System.Windows.Forms.Button btnAdd;
    }
}