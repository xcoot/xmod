.class public final synthetic Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessList;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/ProcessList;

    .line 6
    iput-wide p2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;->f$1:J

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/ProcessList;

    .line 3
    iget-wide v1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;->f$1:J

    .line 5
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 7
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    .line 10
    return-void
.end method
