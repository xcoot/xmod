.class public final synthetic Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda1;->f$0:J

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda1;->f$0:J

    .line 3
    check-cast p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 5
    iput-wide v0, p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    .line 7
    return-void
.end method
