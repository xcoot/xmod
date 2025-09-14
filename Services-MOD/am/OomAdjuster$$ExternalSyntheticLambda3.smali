.class public final synthetic Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/OomAdjuster;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/OomAdjuster;

    .line 3
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 11
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 13
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 19
    :goto_0
    if-ltz v1, :cond_1

    .line 21
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/content/ComponentName;

    .line 27
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 37
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 39
    iget-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 41
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 44
    move-result p1

    .line 45
    add-int/lit8 p1, p1, -0x1

    .line 47
    :goto_1
    if-ltz p1, :cond_1

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    .line 56
    add-int/lit8 p1, p1, -0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method
