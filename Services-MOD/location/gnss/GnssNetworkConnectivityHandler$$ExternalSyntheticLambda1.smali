.class public final synthetic Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 9
    sget-boolean v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    .line 14
    return-void

    .line 15
    :pswitch_0
    sget-boolean v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
