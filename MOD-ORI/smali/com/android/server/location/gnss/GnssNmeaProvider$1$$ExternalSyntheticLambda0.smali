.class public final synthetic Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssNmeaProvider$1;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssNmeaProvider$1;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssNmeaProvider$1;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssNmeaProvider$1;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    check-cast p1, Landroid/location/IGnssNmeaListener;

    .line 6
    .line 7
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->mNmea:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p1, v1, v2, p0}, Landroid/location/IGnssNmeaListener;->onNmeaReceived(JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
