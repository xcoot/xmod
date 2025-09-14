.class public final synthetic Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerServiceExt;

.field public final synthetic f$1:Landroid/content/om/OverlayInfoExt;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/om/ISamsungOverlayCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerServiceExt;Landroid/content/om/OverlayInfoExt;ILandroid/content/om/ISamsungOverlayCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda9;->f$1:Landroid/content/om/OverlayInfoExt;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda9;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda9;->f$3:Landroid/content/om/ISamsungOverlayCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda9;->f$1:Landroid/content/om/OverlayInfoExt;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda9;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda9;->f$3:Landroid/content/om/ISamsungOverlayCallback;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/om/OverlayInfoExt;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3, v2}, Lcom/android/server/om/OverlayManagerSettings;->getState(Landroid/content/om/OverlayIdentifier;I)I

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const/4 v0, -0x1

    .line 24
    :goto_0
    :try_start_1
    iget-object v1, v1, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 25
    .line 26
    iget-object v2, v1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p0, v2, v1, v0}, Landroid/content/om/ISamsungOverlayCallback;->onOverlayStateChanged(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    .line 32
    .line 33
    :catch_1
    return-void
.end method
