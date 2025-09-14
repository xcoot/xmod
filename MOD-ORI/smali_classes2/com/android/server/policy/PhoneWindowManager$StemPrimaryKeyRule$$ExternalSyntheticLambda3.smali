.class public final synthetic Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda3;->f$1:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    .line 2
    .line 3
    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda3;->f$1:J

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "stemPrimaryLongPress: "

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 14
    .line 15
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    .line 16
    .line 17
    const-string v2, "WindowManager"

    .line 18
    .line 19
    invoke-static {p0, v0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    if-eq p0, v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v2, -0x2

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(IIJLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
