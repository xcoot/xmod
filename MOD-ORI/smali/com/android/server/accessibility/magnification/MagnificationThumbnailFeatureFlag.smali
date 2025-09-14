.class public final Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;
.super Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getDefaultValue()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "enable_magnifier_thumbnail"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "accessibility"

    .line 2
    .line 3
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
