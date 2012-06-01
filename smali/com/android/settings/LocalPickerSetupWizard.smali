.class public Lcom/android/settings/LocalPickerSetupWizard;
.super Landroid/app/Activity;
.source "LocalPickerSetupWizard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icycle"

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const v0, 0x7f040034

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalPickerSetupWizard;->setContentView(I)V

    .line 12
    return-void
.end method
