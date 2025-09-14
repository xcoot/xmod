.class Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppTarget:Landroid/app/prediction/AppTarget;

.field public final mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

.field public final mEventHistory:Lcom/android/server/people/data/EventHistory;

.field public mScore:F


# direct methods
.method public constructor <init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mAppTarget:Landroid/app/prediction/AppTarget;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getAppTarget()Landroid/app/prediction/AppTarget;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mAppTarget:Landroid/app/prediction/AppTarget;

    .line 2
    .line 3
    return-object p0
.end method

.method public getConversationInfo()Lcom/android/server/people/data/ConversationInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEventHistory()Lcom/android/server/people/data/EventHistory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    .line 2
    .line 3
    return-object p0
.end method

.method public getScore()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    .line 2
    .line 3
    return p0
.end method

.method public setScore(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    .line 2
    .line 3
    return-void
.end method
