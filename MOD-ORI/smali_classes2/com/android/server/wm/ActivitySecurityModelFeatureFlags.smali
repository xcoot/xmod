.class public abstract Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sAsmRestrictionsEnabled:I

.field public static sAsmToastsEnabled:I


# direct methods
.method public static shouldRestrictActivitySwitch(I)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/security/Flags;->asmRestrictionsEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-wide/32 v2, 0xdbe868a

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v3, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    sget p0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmRestrictionsEnabled:I

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    if-ne p0, v0, :cond_1

    .line 21
    .line 22
    :cond_0
    const/4 v1, 0x1

    .line 23
    :cond_1
    return v1
.end method

.method public static shouldShowToast(I)Z
    .locals 3

    .line 1
    sget v0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmToastsEnabled:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    const-wide/32 v0, 0xdbe868a

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :cond_1
    :goto_0
    return v2
.end method
