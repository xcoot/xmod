.class public final synthetic Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/PolicyHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/PolicyHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/PolicyHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/PolicyHandler;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 4
    .line 5
    check-cast p2, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget p0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 11
    .line 12
    iget v0, p2, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 13
    .line 14
    sub-int/2addr p0, v0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p2}, Lcom/android/server/chimera/PolicyHandler;->getDRAMUsedByApp(Lcom/android/server/chimera/ChimeraAppInfo;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->getDRAMUsedByApp(Lcom/android/server/chimera/ChimeraAppInfo;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    :goto_0
    return p0
.end method
