.class public final synthetic Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;->f$0:Z

    .line 6
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;->f$0:Z

    .line 3
    if-eqz p0, :cond_0

    .line 5
    :try_start_0
    const-string p0, "1"

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string p0, "0"

    .line 12
    :goto_0
    const-string/jumbo v0, "net.knox.nap"

    .line 15
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_2

    .line 19
    :goto_1
    const-string v0, "DomainFilterNapCommon"

    .line 21
    const-string v1, "Unable to set NPA feature property"

    .line 23
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :goto_2
    return-void
.end method
