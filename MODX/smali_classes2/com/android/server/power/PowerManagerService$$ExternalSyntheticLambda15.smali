.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/LongSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAsLong()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda16;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda16;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    return-wide v0
.end method
