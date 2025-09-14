.class public final Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final manipulatedList:Ljava/util/ArrayList;

.field public name:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method
