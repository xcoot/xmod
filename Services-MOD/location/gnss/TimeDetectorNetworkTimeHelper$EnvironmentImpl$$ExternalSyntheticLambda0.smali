.class public final synthetic Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;

    .line 6
    iput-object p2, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;

    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->queryAndInjectNetworkTime(Ljava/lang/String;)V

    .line 8
    return-void
.end method
