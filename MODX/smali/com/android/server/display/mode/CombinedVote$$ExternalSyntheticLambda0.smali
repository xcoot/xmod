.class public final synthetic Lcom/android/server/display/mode/CombinedVote$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/mode/VoteSummary;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/CombinedVote$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/VoteSummary;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/CombinedVote$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/VoteSummary;

    .line 3
    check-cast p1, Lcom/android/server/display/mode/Vote;

    .line 5
    invoke-interface {p1, p0}, Lcom/android/server/display/mode/Vote;->updateSummary(Lcom/android/server/display/mode/VoteSummary;)V

    .line 8
    return-void
.end method
