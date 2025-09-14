.class public final synthetic Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda1;->f$0:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda1;->f$0:J

    .line 2
    .line 3
    check-cast p1, Landroid/app/ondeviceintelligence/InferenceInfo;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/InferenceInfo;->getStartTimeMs()J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    cmp-long p0, p0, v0

    .line 10
    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method
