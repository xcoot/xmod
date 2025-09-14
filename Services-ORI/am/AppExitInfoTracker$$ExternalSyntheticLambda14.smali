.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppExitInfoTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    check-cast p2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    move-object v3, p3

    .line 16
    check-cast v3, [Ljava/lang/String;

    .line 17
    .line 18
    move-object v4, p4

    .line 19
    check-cast v4, Ljava/io/File;

    .line 20
    .line 21
    check-cast p5, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    check-cast p6, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v7

    .line 33
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppExitInfoTracker;->handleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
