.class public final Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public severity:I

.field public final severityType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severity:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severityType:I

    .line 8
    .line 9
    return-void
.end method
