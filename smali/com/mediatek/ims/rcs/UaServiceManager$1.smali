.class Lcom/mediatek/ims/rcs/UaServiceManager$1;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;->registerStateCallback(ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

.field final synthetic val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 143
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iput p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$phoneId:I

    iput-object p3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$phoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo(I)Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegState()I

    move-result v0

    .line 147
    .local v0, "regState":I
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$phoneId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo(I)Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v1

    .line 148
    .local v1, "regMode":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 156
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    iget v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$phoneId:I

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onDeregistering(II)V

    .line 157
    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    iget v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$phoneId:I

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onRegistered(II)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    iget v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$phoneId:I

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onRegistering(II)V

    .line 154
    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    iget v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$1;->val$phoneId:I

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onDeregistered(II)V

    .line 151
    nop

    .line 162
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
