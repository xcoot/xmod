.class Lcom/android/server/am/BaseRestrictionMgr$1;
.super Ljava/util/ArrayList;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BaseRestrictionMgr;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseRestrictionMgr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/BaseRestrictionMgr$1;->this$0:Lcom/android/server/am/BaseRestrictionMgr;

    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const p1, 0x1030010

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method
