.class public abstract Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
.super Landroid/content/pm/IPinItemRequest$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAccepted:Z

.field public final mLauncherUid:I

.field public final mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field public final mResultIntent:Landroid/content/IntentSender;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/pm/IPinItemRequest$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne v1, v0, :cond_3

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string/jumbo v0, "options cannot be unparceled"

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    monitor-enter p0

    .line 40
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    .line 46
    .line 47
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->tryAccept()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    .line 57
    .line 58
    invoke-virtual {v1, p0, p1}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 59
    .line 60
    .line 61
    return v0

    .line 62
    :cond_1
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v0, "accept() called already"

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p1

    .line 76
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 77
    .line 78
    const-string p1, "Calling uid mismatch"

    .line 79
    .line 80
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final isValid()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v1, v0, :cond_0

    .line 14
    .line 15
    move v0, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    monitor-enter p0

    .line 22
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    .line 23
    .line 24
    xor-int/2addr v0, v3

    .line 25
    monitor-exit p0

    .line 26
    return v0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v0
.end method

.method public tryAccept()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
