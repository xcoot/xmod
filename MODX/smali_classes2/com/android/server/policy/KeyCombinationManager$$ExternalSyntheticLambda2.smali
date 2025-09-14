.class public final synthetic Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/KeyCombinationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/KeyCombinationManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/policy/KeyCombinationManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/policy/KeyCombinationManager;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iget v3, p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroid/util/SparseLongArray;->get(I)J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-wide/16 v6, 0x0

    .line 21
    .line 22
    cmp-long v4, v4, v6

    .line 23
    .line 24
    if-lez v4, :cond_0

    .line 25
    .line 26
    iget v4, p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->get(I)J

    .line 29
    .line 30
    .line 31
    move-result-wide v8

    .line 32
    cmp-long v5, v8, v6

    .line 33
    .line 34
    if-lez v5, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/util/SparseLongArray;->get(I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    const-wide/16 v7, 0x96

    .line 41
    .line 42
    add-long/2addr v5, v7

    .line 43
    cmp-long v3, v1, v5

    .line 44
    .line 45
    if-gtz v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->get(I)J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    add-long/2addr v3, v7

    .line 52
    cmp-long v0, v1, v3

    .line 53
    .line 54
    if-gtz v0, :cond_0

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "Performing combination rule : "

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "KeyCombinationManager"

    .line 71
    .line 72
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-direct {v0, v1, p1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 87
    .line 88
    const/4 p0, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const/4 p0, 0x0

    .line 91
    :goto_0
    return p0
.end method
