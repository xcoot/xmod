.class public final synthetic Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/fudger/LocationFudger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/fudger/LocationFudger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/fudger/LocationFudger;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/fudger/LocationFudger;

    .line 2
    .line 3
    check-cast p1, Landroid/location/Location;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/location/fudger/LocationFudger;->createCoarse(Landroid/location/Location;)Landroid/location/Location;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
