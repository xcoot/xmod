.class public final Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 6
    return-void
.end method


# virtual methods
.method public final onLidStateChanged(JI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 3
    iput p3, p1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    .line 5
    if-ltz p3, :cond_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo p2, "onLidStateChanged "

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 17
    iget p2, p2, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    .line 19
    const-string p3, "GnssLocationProvider_ex"

    .line 21
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 26
    iget p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendLidState(I)V

    .line 31
    :cond_0
    return-void
.end method
