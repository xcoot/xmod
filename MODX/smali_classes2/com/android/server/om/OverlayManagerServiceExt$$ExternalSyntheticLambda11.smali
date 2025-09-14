.class public final synthetic Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda11;->f$0:Ljava/util/List;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda11;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda11;->f$0:Ljava/util/List;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda11;->f$1:I

    .line 4
    .line 5
    const-string v1, "OverlayManagerExt"

    .line 6
    .line 7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v2, v0, p0}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string v0, "Unkonwn error in scheduleApplicationInfoChanged()"

    .line 19
    .line 20
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception p0

    .line 25
    const-string/jumbo v0, "updateActivityManagerforSamsungOverlay scheduleApplicationInfoChanged"

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    return-void
.end method
