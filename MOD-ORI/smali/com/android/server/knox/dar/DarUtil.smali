.class public abstract Lcom/android/server/knox/dar/DarUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static isEnterpriseUser(Landroid/content/pm/UserInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "DARUtil"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isSdpNotSupportedSecureFolder()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isBMode()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :cond_0
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    const-string v0, "Device owner status not updated yet..."

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    :cond_1
    const/4 v2, 0x1

    .line 50
    :cond_2
    if-nez v2, :cond_3

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "Not an enterprise user : "

    .line 55
    .line 56
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 60
    .line 61
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string/jumbo v3, "is enterprise user : "

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 74
    .line 75
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return v2
.end method
