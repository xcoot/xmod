.class public final synthetic Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/RemovePackageHelper;

.field public final synthetic f$1:Lcom/android/server/pm/PackageSetting;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/PackageSetting;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/RemovePackageHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/PackageSetting;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/RemovePackageHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/PackageSetting;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v2, "clearKeystoreData:"

    .line 11
    .line 12
    const-wide/32 v3, 0x40000

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v2, v1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 21
    .line 22
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " for user: "

    .line 26
    .line 27
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 41
    .line 42
    iget v1, v1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 43
    .line 44
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/AppDataHelper;->clearKeystoreData(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method
