.class public abstract Lcom/android/server/knox/dar/DarUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static isEnterpriseUser(Landroid/content/pm/UserInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "DARUtil"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isSdpNotSupportedSecureFolder()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isBMode()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 33
    :cond_0
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 35
    const/4 v2, 0x0

    .line 36
    if-nez v0, :cond_2

    .line 38
    const-string v0, "Device owner status not updated yet..."

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 49
    :cond_1
    const/4 v2, 0x1

    .line 50
    :cond_2
    if-nez v2, :cond_3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    const-string v3, "Not an enterprise user : "

    .line 56
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 61
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v3, "is enterprise user : "

    .line 70
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 75
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 78
    :goto_0
    return v2
.end method
