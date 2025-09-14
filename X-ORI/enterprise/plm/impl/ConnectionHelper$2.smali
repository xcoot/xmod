.class public final Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    sget v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->$r8$clinit:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "(*) retry bind to service "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mClassName:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "ConnectionHelper"

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget v4, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I

    .line 27
    .line 28
    sub-int/2addr v4, v3

    .line 29
    iput v4, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I

    .line 30
    .line 31
    if-ltz v4, :cond_0

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v1, "timeout expired, keep retrying... ("

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 42
    .line 43
    iget v1, v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ")"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    if-eqz v1, :cond_1

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v1, "bind timeout expired, but already bound to service "

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mClassName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const-string v0, "bind timeout expired, stop retrying!"

    .line 93
    .line 94
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 98
    .line 99
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->resetBindTimer(Z)V

    .line 100
    .line 101
    .line 102
    return-void
.end method
