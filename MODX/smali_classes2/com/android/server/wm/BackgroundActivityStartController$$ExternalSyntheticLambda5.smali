.class public final synthetic Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    const-string p0, " [source]=> "

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    const-string p0, " [ top  ]=> "

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    if-ne p1, p0, :cond_3

    .line 29
    .line 30
    const-string p0, " [target]=> "

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const-string p0, "         => "

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_1
    return-object p0
.end method
