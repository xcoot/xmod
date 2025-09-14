.class public final Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public key:Ljava/lang/String;

.field public previousValue:I

.field public rawKey:Ljava/lang/String;

.field public tableType:I

.field public final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->previousValue:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getCurrentSettingsValue(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 6
    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x3

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1, p0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    .line 37
    .line 38
    iget p1, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 39
    .line 40
    invoke-static {v0, p0, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    .line 52
    .line 53
    iget p1, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 54
    .line 55
    invoke-static {v0, p0, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    :goto_0
    return p0
.end method

.method public final putCurrentSettingsValue(ILcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->getCurrentSettingsValue(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->previousValue:I

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 13
    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v0, v3, :cond_2

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    if-eq v0, v3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v0, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    .line 42
    .line 43
    iget v4, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 44
    .line 45
    invoke-static {v0, v3, p1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object v0, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    .line 56
    .line 57
    iget v4, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 58
    .line 59
    invoke-static {v0, v3, p1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    .line 63
    .line 64
    const-string v0, "any_screen_enabled"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    iget-object p1, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v0, "accessibility_corner_action_enabled"

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-ne p1, v1, :cond_4

    .line 86
    .line 87
    sget p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->$r8$clinit:I

    .line 88
    .line 89
    const-string p0, "SemExclusiveTaskManagerService"

    .line 90
    .line 91
    const-string p1, "This case shouldn\'t be included at ignore list"

    .line 92
    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    iget-object p1, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    return-void
.end method
