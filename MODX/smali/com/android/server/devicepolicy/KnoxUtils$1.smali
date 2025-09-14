.class public final Lcom/android/server/devicepolicy/KnoxUtils$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$personaService:Lcom/android/server/pm/PersonaManagerService;

.field public final synthetic val$timeMs:J

.field public final synthetic val$userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/KnoxUtils$1;->val$personaService:Lcom/android/server/pm/PersonaManagerService;

    .line 6
    iput-wide p2, p0, Lcom/android/server/devicepolicy/KnoxUtils$1;->val$timeMs:J

    .line 8
    iput p4, p0, Lcom/android/server/devicepolicy/KnoxUtils$1;->val$userHandle:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    const-string v0, "DevicePolicyManager::KnoxUtils"

    .line 3
    const-string/jumbo v1, "notify persona to may log analytics"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxUtils$1;->val$personaService:Lcom/android/server/pm/PersonaManagerService;

    .line 11
    iget-wide v1, p0, Lcom/android/server/devicepolicy/KnoxUtils$1;->val$timeMs:J

    .line 13
    iget p0, p0, Lcom/android/server/devicepolicy/KnoxUtils$1;->val$userHandle:I

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 21
    move-result v3

    .line 22
    const/4 v4, -0x1

    .line 23
    const-string/jumbo v5, "knox_screen_off_timeout"

    .line 26
    if-eqz v3, :cond_0

    .line 28
    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3, v5, v4, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 37
    move-result v3

    .line 38
    :goto_0
    int-to-long v3, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3, v5, v4, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 49
    move-result v3

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    const-wide/16 v5, 0x0

    .line 53
    cmp-long v7, v1, v5

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x1

    .line 57
    if-lez v7, :cond_1

    .line 59
    move v7, v9

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    move v7, v8

    .line 62
    :goto_2
    if-eqz v7, :cond_2

    .line 64
    cmp-long v10, v3, v1

    .line 66
    if-gtz v10, :cond_5

    .line 68
    :cond_2
    if-eqz v7, :cond_3

    .line 70
    cmp-long v10, v3, v5

    .line 72
    if-lez v10, :cond_5

    .line 74
    :cond_3
    if-eqz v7, :cond_4

    .line 76
    cmp-long v5, v3, v5

    .line 78
    if-lez v5, :cond_4

    .line 80
    cmp-long v5, v3, v1

    .line 82
    if-gtz v5, :cond_4

    .line 84
    iget-boolean v5, v0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    .line 86
    if-nez v5, :cond_5

    .line 88
    :cond_4
    if-nez v7, :cond_7

    .line 90
    iget-boolean v5, v0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    .line 92
    if-eqz v5, :cond_7

    .line 94
    :cond_5
    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 96
    iget-object v5, v5, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    .line 98
    const/4 v6, 0x2

    .line 99
    invoke-virtual {v5, v6, p0, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {v5, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    if-eqz v7, :cond_6

    .line 108
    cmp-long p0, v3, v1

    .line 110
    if-lez p0, :cond_6

    .line 112
    iput-boolean v9, v0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    .line 114
    goto :goto_3

    .line 115
    :cond_6
    iput-boolean v8, v0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    .line 117
    :cond_7
    :goto_3
    return-void
.end method
