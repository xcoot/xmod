.class public final synthetic Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/SystemRepository;

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/SystemRepository;

    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p1

    .line 9
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getLongLiveProcessesForUser(I)Ljava/util/List;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
