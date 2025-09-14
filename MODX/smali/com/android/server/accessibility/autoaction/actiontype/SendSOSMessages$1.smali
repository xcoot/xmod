.class public final Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x64

    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    .line 8
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v0

    .line 14
    const-string/jumbo v1, "send_emergency_message_power_number"

    .line 17
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    .line 19
    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mUserId:I

    .line 21
    const/4 v2, 0x5

    .line 22
    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 25
    move-result p0

    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-ge v0, p0, :cond_0

    .line 29
    new-instance v1, Landroid/app/Instrumentation;

    .line 31
    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 34
    const/16 v2, 0x1a

    .line 36
    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string v0, "SendSOSMessages"

    .line 45
    const-string v1, "Exception!"

    .line 47
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :cond_0
    return-void
.end method
