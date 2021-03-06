for ((n_digits = ${1}; n_digits != ${2}; n_digits++))
do
  python evaluate.py --criterion=semi_cross_entropy --gpu=0 --interval=100 --n=${n_digits} --tensorboard-log=semi-cross-entropy --tensorboard-postfix=${n_digits}&
  python evaluate.py --criterion=regression_loss --gpu=1 --interval=100 --n=${n_digits} --tensorboard-log=jsd-loss --tensorboard-postfix=${n_digits}&
  python evaluate.py --criterion=rl_loss --gpu=2 --interval=100 --n=${n_digits} --tensorboard-log=rl-loss --tensorboard-postfix=${n_digits}&
  python evaluate.py --criterion=ce_loss --gpu=3 --interval=100 --n=${n_digits} --tensorboard-log=ce-loss --tensorboard-postfix=${n_digits}&
  wait
done
