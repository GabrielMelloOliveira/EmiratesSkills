﻿namespace EmiratesSkills_S1.View
{
    partial class FormEmailList
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
            this.tbEmailList = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // tbEmailList
            // 
            this.tbEmailList.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tbEmailList.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.tbEmailList.Location = new System.Drawing.Point(0, 0);
            this.tbEmailList.Multiline = true;
            this.tbEmailList.Name = "tbEmailList";
            this.tbEmailList.ReadOnly = true;
            this.tbEmailList.Size = new System.Drawing.Size(856, 463);
            this.tbEmailList.TabIndex = 0;
            // 
            // FormEmailList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(856, 463);
            this.Controls.Add(this.tbEmailList);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FormEmailList";
            this.ShowIcon = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Email List";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tbEmailList;
    }
}