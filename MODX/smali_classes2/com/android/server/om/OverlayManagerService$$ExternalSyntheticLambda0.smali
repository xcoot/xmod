.class public final synthetic Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;IZLandroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/OverlayManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$3:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$4:Landroid/util/ArraySet;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$3:Z

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;->f$4:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string v1, "OverlayManager"

    .line 24
    .line 25
    const-string/jumbo v4, "updateActivityManager remote exception"

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const-string p0, "SWT_OverlayManager"

    .line 34
    .line 35
    const-string/jumbo v0, "overlay changed broadcast to system for color theme"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    new-instance p0, Landroid/util/ArraySet;

    .line 42
    .line 43
    const-string v0, "android"

    .line 44
    .line 45
    filled-new-array {v0}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 63
    .line 64
    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;

    .line 65
    .line 66
    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;-><init>(ILandroid/app/ActivityManagerInternal;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 80
    .line 81
    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;

    .line 82
    .line 83
    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;-><init>(ILandroid/app/ActivityManagerInternal;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void
.end method
