.class public final synthetic Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/SystemPackageResetHelper;->notifyPackageReset(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/SystemPackageResetHelper;->notifyPackageReset(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
