.class public final Lcom/android/server/notification/toast/TextToastRecord;
.super Lcom/android/server/notification/toast/ToastRecord;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Landroid/app/ITransientNotificationCallback;

.field public final mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/statusbar/StatusBarManagerInternal;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p3

    .line 5
    move v3, p4

    .line 6
    move-object/from16 v4, p5

    .line 7
    .line 8
    move/from16 v5, p6

    .line 9
    .line 10
    move-object/from16 v6, p7

    .line 11
    .line 12
    move/from16 v7, p9

    .line 13
    .line 14
    move-object/from16 v8, p10

    .line 15
    .line 16
    move/from16 v9, p11

    .line 17
    .line 18
    invoke-direct/range {v0 .. v9}, Lcom/android/server/notification/toast/ToastRecord;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;ILandroid/os/Binder;I)V

    .line 19
    .line 20
    .line 21
    move-object v0, p2

    .line 22
    iput-object v0, v10, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 23
    .line 24
    move-object/from16 v0, p12

    .line 25
    .line 26
    iput-object v0, v10, Lcom/android/server/notification/toast/TextToastRecord;->mCallback:Landroid/app/ITransientNotificationCallback;

    .line 27
    .line 28
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/CharSequence;

    .line 33
    .line 34
    iput-object v0, v10, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2
    .line 3
    const-string v1, "Cannot hide toast that wasn\'t shown"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    .line 13
    .line 14
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    :try_start_0
    invoke-interface {v0, v1, p0}, Lcom/android/internal/statusbar/IStatusBar;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    :cond_0
    return-void
.end method

.method public final isAppRendered()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final show()Z
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 2
    .line 3
    const-string v1, "NotificationService"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Show pkg="

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, " text="

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "StatusBar not available to show text toast for package "

    .line 43
    .line 44
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return p0

    .line 54
    :cond_1
    iget v1, p0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    .line 59
    .line 60
    iget-object v4, p0, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    .line 61
    .line 62
    iget-object v5, p0, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    .line 63
    .line 64
    iget v6, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    .line 65
    .line 66
    iget-object v7, p0, Lcom/android/server/notification/toast/TextToastRecord;->mCallback:Landroid/app/ITransientNotificationCallback;

    .line 67
    .line 68
    iget v8, p0, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    .line 69
    .line 70
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 71
    .line 72
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    :try_start_0
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    :catch_0
    :cond_2
    const/4 p0, 0x1

    .line 82
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TextToastRecord{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ":"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "/"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    .line 45
    .line 46
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " isSystemToast="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/android/server/notification/toast/ToastRecord;->isSystemToast:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " token="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, " text="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, " duration="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget p0, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    .line 89
    .line 90
    const-string/jumbo v1, "}"

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method
