.class public final Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;
.super Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final getDefaultValue()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x11101db

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "AlwaysOnMagnifier__enable_always_on_magnifier"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "window_manager"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public bridge synthetic setFeatureFlagEnabled(Z)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->setFeatureFlagEnabled(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
