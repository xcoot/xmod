.class public final synthetic Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 3
    check-cast p1, Landroid/net/NetworkScorerAppData;

    .line 5
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;-><init>(Landroid/net/NetworkScorerAppData;)V

    .line 8
    return-object p0
.end method
