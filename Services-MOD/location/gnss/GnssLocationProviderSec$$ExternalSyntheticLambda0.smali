.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;

    .line 10
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Ljava/lang/String;

    .line 14
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    const-string v2, "CTS_RESTRICTMODE="

    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 33
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 36
    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 38
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 40
    check-cast p0, Ljava/io/StringWriter;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 52
    return-void

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 55
    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 57
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 59
    check-cast p0, Ljava/lang/String;

    .line 61
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
