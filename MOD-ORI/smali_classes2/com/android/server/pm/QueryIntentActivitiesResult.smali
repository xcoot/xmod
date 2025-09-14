.class public final Lcom/android/server/pm/QueryIntentActivitiesResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public addInstant:Z

.field public answer:Ljava/util/List;

.field public result:Ljava/util/List;

.field public sortResult:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->sortResult:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->addInstant:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method
