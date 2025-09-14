.class public final synthetic Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/content/pm/ParceledListSlice;

    .line 9
    .line 10
    check-cast p1, Landroid/service/contentcapture/IContentProtectionService;

    .line 11
    .line 12
    sget v0, Lcom/android/server/contentprotection/RemoteContentProtectionService;->$r8$clinit:I

    .line 13
    .line 14
    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentProtectionService;->onLoginDetected(Landroid/content/pm/ParceledListSlice;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p0, Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    .line 19
    .line 20
    check-cast p1, Landroid/service/contentcapture/IContentProtectionService;

    .line 21
    .line 22
    sget v0, Lcom/android/server/contentprotection/RemoteContentProtectionService;->$r8$clinit:I

    .line 23
    .line 24
    invoke-interface {p0}, Landroid/service/contentcapture/IContentProtectionAllowlistCallback;->asBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentProtectionService;->onUpdateAllowlistRequest(Landroid/os/IBinder;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
