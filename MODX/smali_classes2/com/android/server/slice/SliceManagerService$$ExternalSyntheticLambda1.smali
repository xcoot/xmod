.class public final synthetic Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/slice/SliceManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/SliceManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/slice/SliceManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/slice/SliceManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_2

    .line 19
    .line 20
    iget-object v3, v0, Lcom/android/server/slice/SliceManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 21
    .line 22
    invoke-virtual {v0, p0, v2}, Lcom/android/server/slice/SliceManagerService;->isAssistant(ILjava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p0, v2}, Lcom/android/server/slice/SliceManagerService;->isDefaultHomeApp(ILjava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v0, 0xe

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/16 v0, 0xd

    .line 39
    .line 40
    :goto_1
    invoke-virtual {v3, p0, v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(IILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method
