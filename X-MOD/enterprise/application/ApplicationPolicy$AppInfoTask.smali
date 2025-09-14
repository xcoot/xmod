.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mCmd:Ljava/lang/String;

.field public final mUsage:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    .line 6
    iput-wide p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    .line 8
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    .line 3
    iget-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    .line 5
    iget-wide v2, p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    .line 7
    cmp-long v4, v0, v2

    .line 9
    if-nez v4, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    .line 13
    iget-object p1, p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sub-long/2addr v0, v2

    .line 21
    long-to-int p0, v0

    .line 22
    neg-int p0, p0

    .line 23
    :goto_0
    return p0
.end method
