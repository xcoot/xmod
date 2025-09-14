.class public final synthetic Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/AlarmQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/AlarmQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/AlarmQueue;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/AlarmQueue;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v1, Landroid/app/AlarmManager;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/AlarmManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
