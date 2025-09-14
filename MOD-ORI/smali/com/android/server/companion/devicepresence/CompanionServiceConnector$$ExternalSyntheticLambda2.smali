.class public final synthetic Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/companion/AssociationInfo;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/companion/DevicePresenceEvent;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/companion/DevicePresenceEvent;

    .line 9
    .line 10
    check-cast p1, Landroid/companion/ICompanionDeviceService;

    .line 11
    .line 12
    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    .line 13
    .line 14
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p0, Landroid/companion/AssociationInfo;

    .line 19
    .line 20
    check-cast p1, Landroid/companion/ICompanionDeviceService;

    .line 21
    .line 22
    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    .line 23
    .line 24
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    check-cast p0, Landroid/companion/AssociationInfo;

    .line 29
    .line 30
    check-cast p1, Landroid/companion/ICompanionDeviceService;

    .line 31
    .line 32
    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    .line 33
    .line 34
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
