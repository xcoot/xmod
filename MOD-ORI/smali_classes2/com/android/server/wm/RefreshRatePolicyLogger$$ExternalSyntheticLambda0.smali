.class public final synthetic Lcom/android/server/wm/RefreshRatePolicyLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "<< PreferredModeHistory_"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mTag:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, " >>"

    .line 15
    .line 16
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mHistory:Lcom/samsung/android/core/SystemHistory;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lcom/samsung/android/core/SystemHistory;->dump(Ljava/io/PrintWriter;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
